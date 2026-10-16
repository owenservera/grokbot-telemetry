# sandbox_telemetry_parse — 2026-10-16 15:20:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=573387 lines=2143
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1416 |
| `memory_sample` | 718 |
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
| `chromeBrowserPssKb` | {'int': 718} |
| `chromeGpuPssKb` | {'int': 718} |
| `chromeOtherPssKb` | {'int': 718} |
| `chromeProcesses` | {'int': 718} |
| `chromeProfiles` | {'int': 718} |
| `chromeRendererMaxPssKb` | {'int': 718} |
| `chromeRendererPssKb` | {'int': 718} |
| `chromeRenderers` | {'int': 718} |
| `chromeTabs` | {'int': 718} |
| `chromeTabsProbedProfiles` | {'int': 718} |
| `chromeUtilityPssKb` | {'int': 718} |
| `desktopPssKb` | {'int': 718} |
| `hostPssKb` | {'int': 718} |
| `kind` | {'str': 718} |
| `memAvailableKb` | {'int': 718} |
| `memTotalKb` | {'int': 718} |
| `otherPssKb` | {'int': 718} |
| `processes` | {'int': 718} |
| `pssFallbackProcesses` | {'int': 718} |

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
| `cpuMillicores` | {'int': 1413} |
| `display` | {'int': 1416} |
| `kind` | {'str': 1416} |
| `processes` | {'int': 1416} |
| `pssKb` | {'int': 1416} |
| `rendererMaxPssKb` | {'int': 1416} |
| `renderers` | {'int': 1416} |
| `tabs` | {'int': 1415} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
