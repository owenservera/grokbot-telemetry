# sandbox_telemetry_parse — 2026-10-16 14:44:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=545308 lines=2038
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1346 |
| `memory_sample` | 683 |
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
| `chromeBrowserPssKb` | {'int': 683} |
| `chromeGpuPssKb` | {'int': 683} |
| `chromeOtherPssKb` | {'int': 683} |
| `chromeProcesses` | {'int': 683} |
| `chromeProfiles` | {'int': 683} |
| `chromeRendererMaxPssKb` | {'int': 683} |
| `chromeRendererPssKb` | {'int': 683} |
| `chromeRenderers` | {'int': 683} |
| `chromeTabs` | {'int': 683} |
| `chromeTabsProbedProfiles` | {'int': 683} |
| `chromeUtilityPssKb` | {'int': 683} |
| `desktopPssKb` | {'int': 683} |
| `hostPssKb` | {'int': 683} |
| `kind` | {'str': 683} |
| `memAvailableKb` | {'int': 683} |
| `memTotalKb` | {'int': 683} |
| `otherPssKb` | {'int': 683} |
| `processes` | {'int': 683} |
| `pssFallbackProcesses` | {'int': 683} |

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
| `cpuMillicores` | {'int': 1343} |
| `display` | {'int': 1346} |
| `kind` | {'str': 1346} |
| `processes` | {'int': 1346} |
| `pssKb` | {'int': 1346} |
| `rendererMaxPssKb` | {'int': 1346} |
| `renderers` | {'int': 1346} |
| `tabs` | {'int': 1345} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
