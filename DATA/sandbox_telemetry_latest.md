# sandbox_telemetry_parse — 2026-10-17 00:44:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=970828 lines=3628
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2406 |
| `memory_sample` | 1213 |
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
| `chromeBrowserPssKb` | {'int': 1213} |
| `chromeGpuPssKb` | {'int': 1213} |
| `chromeOtherPssKb` | {'int': 1213} |
| `chromeProcesses` | {'int': 1213} |
| `chromeProfiles` | {'int': 1213} |
| `chromeRendererMaxPssKb` | {'int': 1213} |
| `chromeRendererPssKb` | {'int': 1213} |
| `chromeRenderers` | {'int': 1213} |
| `chromeTabs` | {'int': 1213} |
| `chromeTabsProbedProfiles` | {'int': 1213} |
| `chromeUtilityPssKb` | {'int': 1213} |
| `desktopPssKb` | {'int': 1213} |
| `hostPssKb` | {'int': 1213} |
| `kind` | {'str': 1213} |
| `memAvailableKb` | {'int': 1213} |
| `memTotalKb` | {'int': 1213} |
| `otherPssKb` | {'int': 1213} |
| `processes` | {'int': 1213} |
| `pssFallbackProcesses` | {'int': 1213} |

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
| `cpuMillicores` | {'int': 2403} |
| `display` | {'int': 2406} |
| `kind` | {'str': 2406} |
| `processes` | {'int': 2406} |
| `pssKb` | {'int': 2406} |
| `rendererMaxPssKb` | {'int': 2406} |
| `renderers` | {'int': 2406} |
| `tabs` | {'int': 2405} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
