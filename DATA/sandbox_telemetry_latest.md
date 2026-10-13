# sandbox_telemetry_parse — 2026-10-13 21:29:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1229695 lines=3221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2376 |
| `chrome_profile_sample` | 837 |
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
| `chromeBrowserPssKb` | {'int': 2376} |
| `chromeGpuPssKb` | {'int': 2376} |
| `chromeOtherPssKb` | {'int': 2376} |
| `chromeProcesses` | {'int': 2376} |
| `chromeProfiles` | {'int': 2376} |
| `chromeRendererMaxPssKb` | {'int': 2376} |
| `chromeRendererPssKb` | {'int': 2376} |
| `chromeRenderers` | {'int': 2376} |
| `chromeTabs` | {'int': 2376} |
| `chromeTabsProbedProfiles` | {'int': 2376} |
| `chromeUtilityPssKb` | {'int': 2376} |
| `desktopPssKb` | {'int': 2376} |
| `hostPssKb` | {'int': 2376} |
| `kind` | {'str': 2376} |
| `memAvailableKb` | {'int': 2376} |
| `memTotalKb` | {'int': 2376} |
| `otherPssKb` | {'int': 2376} |
| `processes` | {'int': 2376} |
| `pssFallbackProcesses` | {'int': 2376} |

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
| `cpuMillicores` | {'int': 836} |
| `display` | {'int': 837} |
| `kind` | {'str': 837} |
| `processes` | {'int': 837} |
| `pssKb` | {'int': 837} |
| `rendererMaxPssKb` | {'int': 837} |
| `renderers` | {'int': 837} |
| `tabs` | {'int': 837} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
