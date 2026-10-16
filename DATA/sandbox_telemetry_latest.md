# sandbox_telemetry_parse — 2026-10-16 10:02:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=341476 lines=1276
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 838 |
| `memory_sample` | 429 |
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
| `chromeBrowserPssKb` | {'int': 429} |
| `chromeGpuPssKb` | {'int': 429} |
| `chromeOtherPssKb` | {'int': 429} |
| `chromeProcesses` | {'int': 429} |
| `chromeProfiles` | {'int': 429} |
| `chromeRendererMaxPssKb` | {'int': 429} |
| `chromeRendererPssKb` | {'int': 429} |
| `chromeRenderers` | {'int': 429} |
| `chromeTabs` | {'int': 429} |
| `chromeTabsProbedProfiles` | {'int': 429} |
| `chromeUtilityPssKb` | {'int': 429} |
| `desktopPssKb` | {'int': 429} |
| `hostPssKb` | {'int': 429} |
| `kind` | {'str': 429} |
| `memAvailableKb` | {'int': 429} |
| `memTotalKb` | {'int': 429} |
| `otherPssKb` | {'int': 429} |
| `processes` | {'int': 429} |
| `pssFallbackProcesses` | {'int': 429} |

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
| `cpuMillicores` | {'int': 835} |
| `display` | {'int': 838} |
| `kind` | {'str': 838} |
| `processes` | {'int': 838} |
| `pssKb` | {'int': 838} |
| `rendererMaxPssKb` | {'int': 838} |
| `renderers` | {'int': 838} |
| `tabs` | {'int': 837} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
