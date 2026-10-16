# sandbox_telemetry_parse — 2026-10-16 23:19:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=916221 lines=3424
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2270 |
| `memory_sample` | 1145 |
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
| `chromeBrowserPssKb` | {'int': 1145} |
| `chromeGpuPssKb` | {'int': 1145} |
| `chromeOtherPssKb` | {'int': 1145} |
| `chromeProcesses` | {'int': 1145} |
| `chromeProfiles` | {'int': 1145} |
| `chromeRendererMaxPssKb` | {'int': 1145} |
| `chromeRendererPssKb` | {'int': 1145} |
| `chromeRenderers` | {'int': 1145} |
| `chromeTabs` | {'int': 1145} |
| `chromeTabsProbedProfiles` | {'int': 1145} |
| `chromeUtilityPssKb` | {'int': 1145} |
| `desktopPssKb` | {'int': 1145} |
| `hostPssKb` | {'int': 1145} |
| `kind` | {'str': 1145} |
| `memAvailableKb` | {'int': 1145} |
| `memTotalKb` | {'int': 1145} |
| `otherPssKb` | {'int': 1145} |
| `processes` | {'int': 1145} |
| `pssFallbackProcesses` | {'int': 1145} |

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
| `cpuMillicores` | {'int': 2267} |
| `display` | {'int': 2270} |
| `kind` | {'str': 2270} |
| `processes` | {'int': 2270} |
| `pssKb` | {'int': 2270} |
| `rendererMaxPssKb` | {'int': 2270} |
| `renderers` | {'int': 2270} |
| `tabs` | {'int': 2269} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
