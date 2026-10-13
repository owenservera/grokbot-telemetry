# sandbox_telemetry_parse — 2026-10-13 10:25:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1012038 lines=2539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2035 |
| `chrome_profile_sample` | 496 |
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
| `chromeBrowserPssKb` | {'int': 2035} |
| `chromeGpuPssKb` | {'int': 2035} |
| `chromeOtherPssKb` | {'int': 2035} |
| `chromeProcesses` | {'int': 2035} |
| `chromeProfiles` | {'int': 2035} |
| `chromeRendererMaxPssKb` | {'int': 2035} |
| `chromeRendererPssKb` | {'int': 2035} |
| `chromeRenderers` | {'int': 2035} |
| `chromeTabs` | {'int': 2035} |
| `chromeTabsProbedProfiles` | {'int': 2035} |
| `chromeUtilityPssKb` | {'int': 2035} |
| `desktopPssKb` | {'int': 2035} |
| `hostPssKb` | {'int': 2035} |
| `kind` | {'str': 2035} |
| `memAvailableKb` | {'int': 2035} |
| `memTotalKb` | {'int': 2035} |
| `otherPssKb` | {'int': 2035} |
| `processes` | {'int': 2035} |
| `pssFallbackProcesses` | {'int': 2035} |

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
| `cpuMillicores` | {'int': 495} |
| `display` | {'int': 496} |
| `kind` | {'str': 496} |
| `processes` | {'int': 496} |
| `pssKb` | {'int': 496} |
| `rendererMaxPssKb` | {'int': 496} |
| `renderers` | {'int': 496} |
| `tabs` | {'int': 496} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
