# sandbox_telemetry_parse — 2026-10-13 17:11:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1168379 lines=3029
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2280 |
| `chrome_profile_sample` | 741 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2280} |
| `chromeGpuPssKb` | {'int': 2280} |
| `chromeOtherPssKb` | {'int': 2280} |
| `chromeProcesses` | {'int': 2280} |
| `chromeProfiles` | {'int': 2280} |
| `chromeRendererMaxPssKb` | {'int': 2280} |
| `chromeRendererPssKb` | {'int': 2280} |
| `chromeRenderers` | {'int': 2280} |
| `chromeTabs` | {'int': 2280} |
| `chromeTabsProbedProfiles` | {'int': 2280} |
| `chromeUtilityPssKb` | {'int': 2280} |
| `desktopPssKb` | {'int': 2280} |
| `hostPssKb` | {'int': 2280} |
| `kind` | {'str': 2280} |
| `memAvailableKb` | {'int': 2280} |
| `memTotalKb` | {'int': 2280} |
| `otherPssKb` | {'int': 2280} |
| `processes` | {'int': 2280} |
| `pssFallbackProcesses` | {'int': 2280} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 740} |
| `display` | {'int': 741} |
| `kind` | {'str': 741} |
| `processes` | {'int': 741} |
| `pssKb` | {'int': 741} |
| `rendererMaxPssKb` | {'int': 741} |
| `renderers` | {'int': 741} |
| `tabs` | {'int': 741} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
