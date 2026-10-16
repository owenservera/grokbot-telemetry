# sandbox_telemetry_parse — 2026-10-16 21:37:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=849561 lines=3175
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2104 |
| `memory_sample` | 1062 |
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
| `chromeBrowserPssKb` | {'int': 1062} |
| `chromeGpuPssKb` | {'int': 1062} |
| `chromeOtherPssKb` | {'int': 1062} |
| `chromeProcesses` | {'int': 1062} |
| `chromeProfiles` | {'int': 1062} |
| `chromeRendererMaxPssKb` | {'int': 1062} |
| `chromeRendererPssKb` | {'int': 1062} |
| `chromeRenderers` | {'int': 1062} |
| `chromeTabs` | {'int': 1062} |
| `chromeTabsProbedProfiles` | {'int': 1062} |
| `chromeUtilityPssKb` | {'int': 1062} |
| `desktopPssKb` | {'int': 1062} |
| `hostPssKb` | {'int': 1062} |
| `kind` | {'str': 1062} |
| `memAvailableKb` | {'int': 1062} |
| `memTotalKb` | {'int': 1062} |
| `otherPssKb` | {'int': 1062} |
| `processes` | {'int': 1062} |
| `pssFallbackProcesses` | {'int': 1062} |

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
| `cpuMillicores` | {'int': 2101} |
| `display` | {'int': 2104} |
| `kind` | {'str': 2104} |
| `processes` | {'int': 2104} |
| `pssKb` | {'int': 2104} |
| `rendererMaxPssKb` | {'int': 2104} |
| `renderers` | {'int': 2104} |
| `tabs` | {'int': 2103} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
