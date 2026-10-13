# sandbox_telemetry_parse — 2026-10-14 00:15:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1321616 lines=3509
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2520 |
| `chrome_profile_sample` | 981 |
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
| `chromeBrowserPssKb` | {'int': 2520} |
| `chromeGpuPssKb` | {'int': 2520} |
| `chromeOtherPssKb` | {'int': 2520} |
| `chromeProcesses` | {'int': 2520} |
| `chromeProfiles` | {'int': 2520} |
| `chromeRendererMaxPssKb` | {'int': 2520} |
| `chromeRendererPssKb` | {'int': 2520} |
| `chromeRenderers` | {'int': 2520} |
| `chromeTabs` | {'int': 2520} |
| `chromeTabsProbedProfiles` | {'int': 2520} |
| `chromeUtilityPssKb` | {'int': 2520} |
| `desktopPssKb` | {'int': 2520} |
| `hostPssKb` | {'int': 2520} |
| `kind` | {'str': 2520} |
| `memAvailableKb` | {'int': 2520} |
| `memTotalKb` | {'int': 2520} |
| `otherPssKb` | {'int': 2520} |
| `processes` | {'int': 2520} |
| `pssFallbackProcesses` | {'int': 2520} |

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
| `cpuMillicores` | {'int': 980} |
| `display` | {'int': 981} |
| `kind` | {'str': 981} |
| `processes` | {'int': 981} |
| `pssKb` | {'int': 981} |
| `rendererMaxPssKb` | {'int': 981} |
| `renderers` | {'int': 981} |
| `tabs` | {'int': 981} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
