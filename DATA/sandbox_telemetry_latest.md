# sandbox_telemetry_parse — 2026-10-13 09:27:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=982762 lines=2447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1989 |
| `chrome_profile_sample` | 450 |
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
| `chromeBrowserPssKb` | {'int': 1989} |
| `chromeGpuPssKb` | {'int': 1989} |
| `chromeOtherPssKb` | {'int': 1989} |
| `chromeProcesses` | {'int': 1989} |
| `chromeProfiles` | {'int': 1989} |
| `chromeRendererMaxPssKb` | {'int': 1989} |
| `chromeRendererPssKb` | {'int': 1989} |
| `chromeRenderers` | {'int': 1989} |
| `chromeTabs` | {'int': 1989} |
| `chromeTabsProbedProfiles` | {'int': 1989} |
| `chromeUtilityPssKb` | {'int': 1989} |
| `desktopPssKb` | {'int': 1989} |
| `hostPssKb` | {'int': 1989} |
| `kind` | {'str': 1989} |
| `memAvailableKb` | {'int': 1989} |
| `memTotalKb` | {'int': 1989} |
| `otherPssKb` | {'int': 1989} |
| `processes` | {'int': 1989} |
| `pssFallbackProcesses` | {'int': 1989} |

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
| `cpuMillicores` | {'int': 449} |
| `display` | {'int': 450} |
| `kind` | {'str': 450} |
| `processes` | {'int': 450} |
| `pssKb` | {'int': 450} |
| `rendererMaxPssKb` | {'int': 450} |
| `renderers` | {'int': 450} |
| `tabs` | {'int': 450} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
