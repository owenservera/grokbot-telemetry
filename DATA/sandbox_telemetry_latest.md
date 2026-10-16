# sandbox_telemetry_parse — 2026-10-16 23:01:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=902570 lines=3373
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2236 |
| `memory_sample` | 1128 |
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
| `chromeBrowserPssKb` | {'int': 1128} |
| `chromeGpuPssKb` | {'int': 1128} |
| `chromeOtherPssKb` | {'int': 1128} |
| `chromeProcesses` | {'int': 1128} |
| `chromeProfiles` | {'int': 1128} |
| `chromeRendererMaxPssKb` | {'int': 1128} |
| `chromeRendererPssKb` | {'int': 1128} |
| `chromeRenderers` | {'int': 1128} |
| `chromeTabs` | {'int': 1128} |
| `chromeTabsProbedProfiles` | {'int': 1128} |
| `chromeUtilityPssKb` | {'int': 1128} |
| `desktopPssKb` | {'int': 1128} |
| `hostPssKb` | {'int': 1128} |
| `kind` | {'str': 1128} |
| `memAvailableKb` | {'int': 1128} |
| `memTotalKb` | {'int': 1128} |
| `otherPssKb` | {'int': 1128} |
| `processes` | {'int': 1128} |
| `pssFallbackProcesses` | {'int': 1128} |

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
| `cpuMillicores` | {'int': 2233} |
| `display` | {'int': 2236} |
| `kind` | {'str': 2236} |
| `processes` | {'int': 2236} |
| `pssKb` | {'int': 2236} |
| `rendererMaxPssKb` | {'int': 2236} |
| `renderers` | {'int': 2236} |
| `tabs` | {'int': 2235} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
