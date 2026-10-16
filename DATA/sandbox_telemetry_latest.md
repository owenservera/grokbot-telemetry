# sandbox_telemetry_parse — 2026-10-16 14:07:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=516410 lines=1930
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1274 |
| `memory_sample` | 647 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 647} |
| `chromeGpuPssKb` | {'int': 647} |
| `chromeOtherPssKb` | {'int': 647} |
| `chromeProcesses` | {'int': 647} |
| `chromeProfiles` | {'int': 647} |
| `chromeRendererMaxPssKb` | {'int': 647} |
| `chromeRendererPssKb` | {'int': 647} |
| `chromeRenderers` | {'int': 647} |
| `chromeTabs` | {'int': 647} |
| `chromeTabsProbedProfiles` | {'int': 647} |
| `chromeUtilityPssKb` | {'int': 647} |
| `desktopPssKb` | {'int': 647} |
| `hostPssKb` | {'int': 647} |
| `kind` | {'str': 647} |
| `memAvailableKb` | {'int': 647} |
| `memTotalKb` | {'int': 647} |
| `otherPssKb` | {'int': 647} |
| `processes` | {'int': 647} |
| `pssFallbackProcesses` | {'int': 647} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1271} |
| `display` | {'int': 1274} |
| `kind` | {'str': 1274} |
| `processes` | {'int': 1274} |
| `pssKb` | {'int': 1274} |
| `rendererMaxPssKb` | {'int': 1274} |
| `renderers` | {'int': 1274} |
| `tabs` | {'int': 1273} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
