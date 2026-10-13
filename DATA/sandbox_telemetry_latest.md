# sandbox_telemetry_parse — 2026-10-13 17:19:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1172209 lines=3041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2286 |
| `chrome_profile_sample` | 747 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2286} |
| `chromeGpuPssKb` | {'int': 2286} |
| `chromeOtherPssKb` | {'int': 2286} |
| `chromeProcesses` | {'int': 2286} |
| `chromeProfiles` | {'int': 2286} |
| `chromeRendererMaxPssKb` | {'int': 2286} |
| `chromeRendererPssKb` | {'int': 2286} |
| `chromeRenderers` | {'int': 2286} |
| `chromeTabs` | {'int': 2286} |
| `chromeTabsProbedProfiles` | {'int': 2286} |
| `chromeUtilityPssKb` | {'int': 2286} |
| `desktopPssKb` | {'int': 2286} |
| `hostPssKb` | {'int': 2286} |
| `kind` | {'str': 2286} |
| `memAvailableKb` | {'int': 2286} |
| `memTotalKb` | {'int': 2286} |
| `otherPssKb` | {'int': 2286} |
| `processes` | {'int': 2286} |
| `pssFallbackProcesses` | {'int': 2286} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 746} |
| `display` | {'int': 747} |
| `kind` | {'str': 747} |
| `processes` | {'int': 747} |
| `pssKb` | {'int': 747} |
| `rendererMaxPssKb` | {'int': 747} |
| `renderers` | {'int': 747} |
| `tabs` | {'int': 747} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
