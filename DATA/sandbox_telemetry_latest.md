# sandbox_telemetry_parse — 2026-10-13 13:30:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1108358 lines=2841
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2186 |
| `chrome_profile_sample` | 647 |
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
| `chromeBrowserPssKb` | {'int': 2186} |
| `chromeGpuPssKb` | {'int': 2186} |
| `chromeOtherPssKb` | {'int': 2186} |
| `chromeProcesses` | {'int': 2186} |
| `chromeProfiles` | {'int': 2186} |
| `chromeRendererMaxPssKb` | {'int': 2186} |
| `chromeRendererPssKb` | {'int': 2186} |
| `chromeRenderers` | {'int': 2186} |
| `chromeTabs` | {'int': 2186} |
| `chromeTabsProbedProfiles` | {'int': 2186} |
| `chromeUtilityPssKb` | {'int': 2186} |
| `desktopPssKb` | {'int': 2186} |
| `hostPssKb` | {'int': 2186} |
| `kind` | {'str': 2186} |
| `memAvailableKb` | {'int': 2186} |
| `memTotalKb` | {'int': 2186} |
| `otherPssKb` | {'int': 2186} |
| `processes` | {'int': 2186} |
| `pssFallbackProcesses` | {'int': 2186} |

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
| `cpuMillicores` | {'int': 646} |
| `display` | {'int': 647} |
| `kind` | {'str': 647} |
| `processes` | {'int': 647} |
| `pssKb` | {'int': 647} |
| `rendererMaxPssKb` | {'int': 647} |
| `renderers` | {'int': 647} |
| `tabs` | {'int': 647} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
