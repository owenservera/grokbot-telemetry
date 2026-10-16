# sandbox_telemetry_parse — 2026-10-16 05:53:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=157700 lines=589
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 380 |
| `memory_sample` | 200 |
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
| `chromeBrowserPssKb` | {'int': 200} |
| `chromeGpuPssKb` | {'int': 200} |
| `chromeOtherPssKb` | {'int': 200} |
| `chromeProcesses` | {'int': 200} |
| `chromeProfiles` | {'int': 200} |
| `chromeRendererMaxPssKb` | {'int': 200} |
| `chromeRendererPssKb` | {'int': 200} |
| `chromeRenderers` | {'int': 200} |
| `chromeTabs` | {'int': 200} |
| `chromeTabsProbedProfiles` | {'int': 200} |
| `chromeUtilityPssKb` | {'int': 200} |
| `desktopPssKb` | {'int': 200} |
| `hostPssKb` | {'int': 200} |
| `kind` | {'str': 200} |
| `memAvailableKb` | {'int': 200} |
| `memTotalKb` | {'int': 200} |
| `otherPssKb` | {'int': 200} |
| `processes` | {'int': 200} |
| `pssFallbackProcesses` | {'int': 200} |

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
| `cpuMillicores` | {'int': 377} |
| `display` | {'int': 380} |
| `kind` | {'str': 380} |
| `processes` | {'int': 380} |
| `pssKb` | {'int': 380} |
| `rendererMaxPssKb` | {'int': 380} |
| `renderers` | {'int': 380} |
| `tabs` | {'int': 379} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
