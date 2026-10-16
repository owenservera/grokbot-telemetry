# sandbox_telemetry_parse — 2026-10-16 09:30:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=321401 lines=1201
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 788 |
| `memory_sample` | 404 |
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
| `chromeBrowserPssKb` | {'int': 404} |
| `chromeGpuPssKb` | {'int': 404} |
| `chromeOtherPssKb` | {'int': 404} |
| `chromeProcesses` | {'int': 404} |
| `chromeProfiles` | {'int': 404} |
| `chromeRendererMaxPssKb` | {'int': 404} |
| `chromeRendererPssKb` | {'int': 404} |
| `chromeRenderers` | {'int': 404} |
| `chromeTabs` | {'int': 404} |
| `chromeTabsProbedProfiles` | {'int': 404} |
| `chromeUtilityPssKb` | {'int': 404} |
| `desktopPssKb` | {'int': 404} |
| `hostPssKb` | {'int': 404} |
| `kind` | {'str': 404} |
| `memAvailableKb` | {'int': 404} |
| `memTotalKb` | {'int': 404} |
| `otherPssKb` | {'int': 404} |
| `processes` | {'int': 404} |
| `pssFallbackProcesses` | {'int': 404} |

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
| `cpuMillicores` | {'int': 785} |
| `display` | {'int': 788} |
| `kind` | {'str': 788} |
| `processes` | {'int': 788} |
| `pssKb` | {'int': 788} |
| `rendererMaxPssKb` | {'int': 788} |
| `renderers` | {'int': 788} |
| `tabs` | {'int': 787} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
