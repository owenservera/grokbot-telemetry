# sandbox_telemetry_parse — 2026-10-13 14:29:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1135809 lines=2927
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2229 |
| `chrome_profile_sample` | 690 |
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
| `chromeBrowserPssKb` | {'int': 2229} |
| `chromeGpuPssKb` | {'int': 2229} |
| `chromeOtherPssKb` | {'int': 2229} |
| `chromeProcesses` | {'int': 2229} |
| `chromeProfiles` | {'int': 2229} |
| `chromeRendererMaxPssKb` | {'int': 2229} |
| `chromeRendererPssKb` | {'int': 2229} |
| `chromeRenderers` | {'int': 2229} |
| `chromeTabs` | {'int': 2229} |
| `chromeTabsProbedProfiles` | {'int': 2229} |
| `chromeUtilityPssKb` | {'int': 2229} |
| `desktopPssKb` | {'int': 2229} |
| `hostPssKb` | {'int': 2229} |
| `kind` | {'str': 2229} |
| `memAvailableKb` | {'int': 2229} |
| `memTotalKb` | {'int': 2229} |
| `otherPssKb` | {'int': 2229} |
| `processes` | {'int': 2229} |
| `pssFallbackProcesses` | {'int': 2229} |

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
| `cpuMillicores` | {'int': 689} |
| `display` | {'int': 690} |
| `kind` | {'str': 690} |
| `processes` | {'int': 690} |
| `pssKb` | {'int': 690} |
| `rendererMaxPssKb` | {'int': 690} |
| `renderers` | {'int': 690} |
| `tabs` | {'int': 690} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
