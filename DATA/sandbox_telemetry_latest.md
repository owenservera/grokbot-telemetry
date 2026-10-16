# sandbox_telemetry_parse — 2026-10-16 11:36:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=408048 lines=1525
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1004 |
| `memory_sample` | 512 |
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
| `chromeBrowserPssKb` | {'int': 512} |
| `chromeGpuPssKb` | {'int': 512} |
| `chromeOtherPssKb` | {'int': 512} |
| `chromeProcesses` | {'int': 512} |
| `chromeProfiles` | {'int': 512} |
| `chromeRendererMaxPssKb` | {'int': 512} |
| `chromeRendererPssKb` | {'int': 512} |
| `chromeRenderers` | {'int': 512} |
| `chromeTabs` | {'int': 512} |
| `chromeTabsProbedProfiles` | {'int': 512} |
| `chromeUtilityPssKb` | {'int': 512} |
| `desktopPssKb` | {'int': 512} |
| `hostPssKb` | {'int': 512} |
| `kind` | {'str': 512} |
| `memAvailableKb` | {'int': 512} |
| `memTotalKb` | {'int': 512} |
| `otherPssKb` | {'int': 512} |
| `processes` | {'int': 512} |
| `pssFallbackProcesses` | {'int': 512} |

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
| `cpuMillicores` | {'int': 1001} |
| `display` | {'int': 1004} |
| `kind` | {'str': 1004} |
| `processes` | {'int': 1004} |
| `pssKb` | {'int': 1004} |
| `rendererMaxPssKb` | {'int': 1004} |
| `renderers` | {'int': 1004} |
| `tabs` | {'int': 1003} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
