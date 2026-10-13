# sandbox_telemetry_parse — 2026-10-13 12:40:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1080267 lines=2753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2142 |
| `chrome_profile_sample` | 603 |
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
| `chromeBrowserPssKb` | {'int': 2142} |
| `chromeGpuPssKb` | {'int': 2142} |
| `chromeOtherPssKb` | {'int': 2142} |
| `chromeProcesses` | {'int': 2142} |
| `chromeProfiles` | {'int': 2142} |
| `chromeRendererMaxPssKb` | {'int': 2142} |
| `chromeRendererPssKb` | {'int': 2142} |
| `chromeRenderers` | {'int': 2142} |
| `chromeTabs` | {'int': 2142} |
| `chromeTabsProbedProfiles` | {'int': 2142} |
| `chromeUtilityPssKb` | {'int': 2142} |
| `desktopPssKb` | {'int': 2142} |
| `hostPssKb` | {'int': 2142} |
| `kind` | {'str': 2142} |
| `memAvailableKb` | {'int': 2142} |
| `memTotalKb` | {'int': 2142} |
| `otherPssKb` | {'int': 2142} |
| `processes` | {'int': 2142} |
| `pssFallbackProcesses` | {'int': 2142} |

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
| `cpuMillicores` | {'int': 602} |
| `display` | {'int': 603} |
| `kind` | {'str': 603} |
| `processes` | {'int': 603} |
| `pssKb` | {'int': 603} |
| `rendererMaxPssKb` | {'int': 603} |
| `renderers` | {'int': 603} |
| `tabs` | {'int': 603} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
