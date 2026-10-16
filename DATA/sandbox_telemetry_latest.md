# sandbox_telemetry_parse — 2026-10-16 05:09:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=123197 lines=460
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 294 |
| `memory_sample` | 157 |
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
| `chromeBrowserPssKb` | {'int': 157} |
| `chromeGpuPssKb` | {'int': 157} |
| `chromeOtherPssKb` | {'int': 157} |
| `chromeProcesses` | {'int': 157} |
| `chromeProfiles` | {'int': 157} |
| `chromeRendererMaxPssKb` | {'int': 157} |
| `chromeRendererPssKb` | {'int': 157} |
| `chromeRenderers` | {'int': 157} |
| `chromeTabs` | {'int': 157} |
| `chromeTabsProbedProfiles` | {'int': 157} |
| `chromeUtilityPssKb` | {'int': 157} |
| `desktopPssKb` | {'int': 157} |
| `hostPssKb` | {'int': 157} |
| `kind` | {'str': 157} |
| `memAvailableKb` | {'int': 157} |
| `memTotalKb` | {'int': 157} |
| `otherPssKb` | {'int': 157} |
| `processes` | {'int': 157} |
| `pssFallbackProcesses` | {'int': 157} |

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
| `cpuMillicores` | {'int': 291} |
| `display` | {'int': 294} |
| `kind` | {'str': 294} |
| `processes` | {'int': 294} |
| `pssKb` | {'int': 294} |
| `rendererMaxPssKb` | {'int': 294} |
| `renderers` | {'int': 294} |
| `tabs` | {'int': 293} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
