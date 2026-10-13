# sandbox_telemetry_parse — 2026-10-13 12:11:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1067493 lines=2713
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2122 |
| `chrome_profile_sample` | 583 |
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
| `chromeBrowserPssKb` | {'int': 2122} |
| `chromeGpuPssKb` | {'int': 2122} |
| `chromeOtherPssKb` | {'int': 2122} |
| `chromeProcesses` | {'int': 2122} |
| `chromeProfiles` | {'int': 2122} |
| `chromeRendererMaxPssKb` | {'int': 2122} |
| `chromeRendererPssKb` | {'int': 2122} |
| `chromeRenderers` | {'int': 2122} |
| `chromeTabs` | {'int': 2122} |
| `chromeTabsProbedProfiles` | {'int': 2122} |
| `chromeUtilityPssKb` | {'int': 2122} |
| `desktopPssKb` | {'int': 2122} |
| `hostPssKb` | {'int': 2122} |
| `kind` | {'str': 2122} |
| `memAvailableKb` | {'int': 2122} |
| `memTotalKb` | {'int': 2122} |
| `otherPssKb` | {'int': 2122} |
| `processes` | {'int': 2122} |
| `pssFallbackProcesses` | {'int': 2122} |

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
| `cpuMillicores` | {'int': 582} |
| `display` | {'int': 583} |
| `kind` | {'str': 583} |
| `processes` | {'int': 583} |
| `pssKb` | {'int': 583} |
| `rendererMaxPssKb` | {'int': 583} |
| `renderers` | {'int': 583} |
| `tabs` | {'int': 583} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
