# sandbox_telemetry_parse — 2026-10-16 22:50:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=896946 lines=3352
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2222 |
| `memory_sample` | 1121 |
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
| `chromeBrowserPssKb` | {'int': 1121} |
| `chromeGpuPssKb` | {'int': 1121} |
| `chromeOtherPssKb` | {'int': 1121} |
| `chromeProcesses` | {'int': 1121} |
| `chromeProfiles` | {'int': 1121} |
| `chromeRendererMaxPssKb` | {'int': 1121} |
| `chromeRendererPssKb` | {'int': 1121} |
| `chromeRenderers` | {'int': 1121} |
| `chromeTabs` | {'int': 1121} |
| `chromeTabsProbedProfiles` | {'int': 1121} |
| `chromeUtilityPssKb` | {'int': 1121} |
| `desktopPssKb` | {'int': 1121} |
| `hostPssKb` | {'int': 1121} |
| `kind` | {'str': 1121} |
| `memAvailableKb` | {'int': 1121} |
| `memTotalKb` | {'int': 1121} |
| `otherPssKb` | {'int': 1121} |
| `processes` | {'int': 1121} |
| `pssFallbackProcesses` | {'int': 1121} |

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
| `cpuMillicores` | {'int': 2219} |
| `display` | {'int': 2222} |
| `kind` | {'str': 2222} |
| `processes` | {'int': 2222} |
| `pssKb` | {'int': 2222} |
| `rendererMaxPssKb` | {'int': 2222} |
| `renderers` | {'int': 2222} |
| `tabs` | {'int': 2221} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
