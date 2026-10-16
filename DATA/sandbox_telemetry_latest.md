# sandbox_telemetry_parse — 2026-10-16 14:22:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=528449 lines=1975
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1304 |
| `memory_sample` | 662 |
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
| `chromeBrowserPssKb` | {'int': 662} |
| `chromeGpuPssKb` | {'int': 662} |
| `chromeOtherPssKb` | {'int': 662} |
| `chromeProcesses` | {'int': 662} |
| `chromeProfiles` | {'int': 662} |
| `chromeRendererMaxPssKb` | {'int': 662} |
| `chromeRendererPssKb` | {'int': 662} |
| `chromeRenderers` | {'int': 662} |
| `chromeTabs` | {'int': 662} |
| `chromeTabsProbedProfiles` | {'int': 662} |
| `chromeUtilityPssKb` | {'int': 662} |
| `desktopPssKb` | {'int': 662} |
| `hostPssKb` | {'int': 662} |
| `kind` | {'str': 662} |
| `memAvailableKb` | {'int': 662} |
| `memTotalKb` | {'int': 662} |
| `otherPssKb` | {'int': 662} |
| `processes` | {'int': 662} |
| `pssFallbackProcesses` | {'int': 662} |

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
| `cpuMillicores` | {'int': 1301} |
| `display` | {'int': 1304} |
| `kind` | {'str': 1304} |
| `processes` | {'int': 1304} |
| `pssKb` | {'int': 1304} |
| `rendererMaxPssKb` | {'int': 1304} |
| `renderers` | {'int': 1304} |
| `tabs` | {'int': 1303} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
