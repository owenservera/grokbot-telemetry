# sandbox_telemetry_parse — 2026-10-16 05:17:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=128804 lines=481
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 308 |
| `memory_sample` | 164 |
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
| `chromeBrowserPssKb` | {'int': 164} |
| `chromeGpuPssKb` | {'int': 164} |
| `chromeOtherPssKb` | {'int': 164} |
| `chromeProcesses` | {'int': 164} |
| `chromeProfiles` | {'int': 164} |
| `chromeRendererMaxPssKb` | {'int': 164} |
| `chromeRendererPssKb` | {'int': 164} |
| `chromeRenderers` | {'int': 164} |
| `chromeTabs` | {'int': 164} |
| `chromeTabsProbedProfiles` | {'int': 164} |
| `chromeUtilityPssKb` | {'int': 164} |
| `desktopPssKb` | {'int': 164} |
| `hostPssKb` | {'int': 164} |
| `kind` | {'str': 164} |
| `memAvailableKb` | {'int': 164} |
| `memTotalKb` | {'int': 164} |
| `otherPssKb` | {'int': 164} |
| `processes` | {'int': 164} |
| `pssFallbackProcesses` | {'int': 164} |

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
| `cpuMillicores` | {'int': 305} |
| `display` | {'int': 308} |
| `kind` | {'str': 308} |
| `processes` | {'int': 308} |
| `pssKb` | {'int': 308} |
| `rendererMaxPssKb` | {'int': 308} |
| `renderers` | {'int': 308} |
| `tabs` | {'int': 307} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
