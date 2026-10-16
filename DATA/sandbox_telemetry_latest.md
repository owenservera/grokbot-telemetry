# sandbox_telemetry_parse — 2026-10-16 04:17:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=81522 lines=304
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 190 |
| `memory_sample` | 105 |
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
| `chromeBrowserPssKb` | {'int': 105} |
| `chromeGpuPssKb` | {'int': 105} |
| `chromeOtherPssKb` | {'int': 105} |
| `chromeProcesses` | {'int': 105} |
| `chromeProfiles` | {'int': 105} |
| `chromeRendererMaxPssKb` | {'int': 105} |
| `chromeRendererPssKb` | {'int': 105} |
| `chromeRenderers` | {'int': 105} |
| `chromeTabs` | {'int': 105} |
| `chromeTabsProbedProfiles` | {'int': 105} |
| `chromeUtilityPssKb` | {'int': 105} |
| `desktopPssKb` | {'int': 105} |
| `hostPssKb` | {'int': 105} |
| `kind` | {'str': 105} |
| `memAvailableKb` | {'int': 105} |
| `memTotalKb` | {'int': 105} |
| `otherPssKb` | {'int': 105} |
| `processes` | {'int': 105} |
| `pssFallbackProcesses` | {'int': 105} |

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
| `cpuMillicores` | {'int': 187} |
| `display` | {'int': 190} |
| `kind` | {'str': 190} |
| `processes` | {'int': 190} |
| `pssKb` | {'int': 190} |
| `rendererMaxPssKb` | {'int': 190} |
| `renderers` | {'int': 190} |
| `tabs` | {'int': 189} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
