# sandbox_telemetry_parse — 2026-10-13 08:46:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=959856 lines=2375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1953 |
| `chrome_profile_sample` | 414 |
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
| `chromeBrowserPssKb` | {'int': 1953} |
| `chromeGpuPssKb` | {'int': 1953} |
| `chromeOtherPssKb` | {'int': 1953} |
| `chromeProcesses` | {'int': 1953} |
| `chromeProfiles` | {'int': 1953} |
| `chromeRendererMaxPssKb` | {'int': 1953} |
| `chromeRendererPssKb` | {'int': 1953} |
| `chromeRenderers` | {'int': 1953} |
| `chromeTabs` | {'int': 1953} |
| `chromeTabsProbedProfiles` | {'int': 1953} |
| `chromeUtilityPssKb` | {'int': 1953} |
| `desktopPssKb` | {'int': 1953} |
| `hostPssKb` | {'int': 1953} |
| `kind` | {'str': 1953} |
| `memAvailableKb` | {'int': 1953} |
| `memTotalKb` | {'int': 1953} |
| `otherPssKb` | {'int': 1953} |
| `processes` | {'int': 1953} |
| `pssFallbackProcesses` | {'int': 1953} |

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
| `cpuMillicores` | {'int': 413} |
| `display` | {'int': 414} |
| `kind` | {'str': 414} |
| `processes` | {'int': 414} |
| `pssKb` | {'int': 414} |
| `rendererMaxPssKb` | {'int': 414} |
| `renderers` | {'int': 414} |
| `tabs` | {'int': 414} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
