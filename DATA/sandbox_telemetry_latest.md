# sandbox_telemetry_parse — 2026-10-13 14:17:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1132614 lines=2917
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2224 |
| `chrome_profile_sample` | 685 |
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
| `chromeBrowserPssKb` | {'int': 2224} |
| `chromeGpuPssKb` | {'int': 2224} |
| `chromeOtherPssKb` | {'int': 2224} |
| `chromeProcesses` | {'int': 2224} |
| `chromeProfiles` | {'int': 2224} |
| `chromeRendererMaxPssKb` | {'int': 2224} |
| `chromeRendererPssKb` | {'int': 2224} |
| `chromeRenderers` | {'int': 2224} |
| `chromeTabs` | {'int': 2224} |
| `chromeTabsProbedProfiles` | {'int': 2224} |
| `chromeUtilityPssKb` | {'int': 2224} |
| `desktopPssKb` | {'int': 2224} |
| `hostPssKb` | {'int': 2224} |
| `kind` | {'str': 2224} |
| `memAvailableKb` | {'int': 2224} |
| `memTotalKb` | {'int': 2224} |
| `otherPssKb` | {'int': 2224} |
| `processes` | {'int': 2224} |
| `pssFallbackProcesses` | {'int': 2224} |

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
| `cpuMillicores` | {'int': 684} |
| `display` | {'int': 685} |
| `kind` | {'str': 685} |
| `processes` | {'int': 685} |
| `pssKb` | {'int': 685} |
| `rendererMaxPssKb` | {'int': 685} |
| `renderers` | {'int': 685} |
| `tabs` | {'int': 685} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
