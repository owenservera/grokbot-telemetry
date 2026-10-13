# sandbox_telemetry_parse — 2026-10-13 07:31:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=916585 lines=2239
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1885 |
| `chrome_profile_sample` | 346 |
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
| `chromeBrowserPssKb` | {'int': 1885} |
| `chromeGpuPssKb` | {'int': 1885} |
| `chromeOtherPssKb` | {'int': 1885} |
| `chromeProcesses` | {'int': 1885} |
| `chromeProfiles` | {'int': 1885} |
| `chromeRendererMaxPssKb` | {'int': 1885} |
| `chromeRendererPssKb` | {'int': 1885} |
| `chromeRenderers` | {'int': 1885} |
| `chromeTabs` | {'int': 1885} |
| `chromeTabsProbedProfiles` | {'int': 1885} |
| `chromeUtilityPssKb` | {'int': 1885} |
| `desktopPssKb` | {'int': 1885} |
| `hostPssKb` | {'int': 1885} |
| `kind` | {'str': 1885} |
| `memAvailableKb` | {'int': 1885} |
| `memTotalKb` | {'int': 1885} |
| `otherPssKb` | {'int': 1885} |
| `processes` | {'int': 1885} |
| `pssFallbackProcesses` | {'int': 1885} |

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
| `cpuMillicores` | {'int': 345} |
| `display` | {'int': 346} |
| `kind` | {'str': 346} |
| `processes` | {'int': 346} |
| `pssKb` | {'int': 346} |
| `rendererMaxPssKb` | {'int': 346} |
| `renderers` | {'int': 346} |
| `tabs` | {'int': 346} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
