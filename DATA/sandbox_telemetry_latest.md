# sandbox_telemetry_parse — 2026-10-16 05:08:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=122396 lines=457
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 292 |
| `memory_sample` | 156 |
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
| `chromeBrowserPssKb` | {'int': 156} |
| `chromeGpuPssKb` | {'int': 156} |
| `chromeOtherPssKb` | {'int': 156} |
| `chromeProcesses` | {'int': 156} |
| `chromeProfiles` | {'int': 156} |
| `chromeRendererMaxPssKb` | {'int': 156} |
| `chromeRendererPssKb` | {'int': 156} |
| `chromeRenderers` | {'int': 156} |
| `chromeTabs` | {'int': 156} |
| `chromeTabsProbedProfiles` | {'int': 156} |
| `chromeUtilityPssKb` | {'int': 156} |
| `desktopPssKb` | {'int': 156} |
| `hostPssKb` | {'int': 156} |
| `kind` | {'str': 156} |
| `memAvailableKb` | {'int': 156} |
| `memTotalKb` | {'int': 156} |
| `otherPssKb` | {'int': 156} |
| `processes` | {'int': 156} |
| `pssFallbackProcesses` | {'int': 156} |

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
| `cpuMillicores` | {'int': 289} |
| `display` | {'int': 292} |
| `kind` | {'str': 292} |
| `processes` | {'int': 292} |
| `pssKb` | {'int': 292} |
| `rendererMaxPssKb` | {'int': 292} |
| `renderers` | {'int': 292} |
| `tabs` | {'int': 291} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
