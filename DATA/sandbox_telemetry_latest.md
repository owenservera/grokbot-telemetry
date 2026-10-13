# sandbox_telemetry_parse — 2026-10-13 12:09:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1066215 lines=2709
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2120 |
| `chrome_profile_sample` | 581 |
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
| `chromeBrowserPssKb` | {'int': 2120} |
| `chromeGpuPssKb` | {'int': 2120} |
| `chromeOtherPssKb` | {'int': 2120} |
| `chromeProcesses` | {'int': 2120} |
| `chromeProfiles` | {'int': 2120} |
| `chromeRendererMaxPssKb` | {'int': 2120} |
| `chromeRendererPssKb` | {'int': 2120} |
| `chromeRenderers` | {'int': 2120} |
| `chromeTabs` | {'int': 2120} |
| `chromeTabsProbedProfiles` | {'int': 2120} |
| `chromeUtilityPssKb` | {'int': 2120} |
| `desktopPssKb` | {'int': 2120} |
| `hostPssKb` | {'int': 2120} |
| `kind` | {'str': 2120} |
| `memAvailableKb` | {'int': 2120} |
| `memTotalKb` | {'int': 2120} |
| `otherPssKb` | {'int': 2120} |
| `processes` | {'int': 2120} |
| `pssFallbackProcesses` | {'int': 2120} |

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
| `cpuMillicores` | {'int': 580} |
| `display` | {'int': 581} |
| `kind` | {'str': 581} |
| `processes` | {'int': 581} |
| `pssKb` | {'int': 581} |
| `rendererMaxPssKb` | {'int': 581} |
| `renderers` | {'int': 581} |
| `tabs` | {'int': 581} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
