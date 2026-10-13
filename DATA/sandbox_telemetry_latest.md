# sandbox_telemetry_parse — 2026-10-13 10:54:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1026680 lines=2585
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2058 |
| `chrome_profile_sample` | 519 |
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
| `chromeBrowserPssKb` | {'int': 2058} |
| `chromeGpuPssKb` | {'int': 2058} |
| `chromeOtherPssKb` | {'int': 2058} |
| `chromeProcesses` | {'int': 2058} |
| `chromeProfiles` | {'int': 2058} |
| `chromeRendererMaxPssKb` | {'int': 2058} |
| `chromeRendererPssKb` | {'int': 2058} |
| `chromeRenderers` | {'int': 2058} |
| `chromeTabs` | {'int': 2058} |
| `chromeTabsProbedProfiles` | {'int': 2058} |
| `chromeUtilityPssKb` | {'int': 2058} |
| `desktopPssKb` | {'int': 2058} |
| `hostPssKb` | {'int': 2058} |
| `kind` | {'str': 2058} |
| `memAvailableKb` | {'int': 2058} |
| `memTotalKb` | {'int': 2058} |
| `otherPssKb` | {'int': 2058} |
| `processes` | {'int': 2058} |
| `pssFallbackProcesses` | {'int': 2058} |

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
| `cpuMillicores` | {'int': 518} |
| `display` | {'int': 519} |
| `kind` | {'str': 519} |
| `processes` | {'int': 519} |
| `pssKb` | {'int': 519} |
| `rendererMaxPssKb` | {'int': 519} |
| `renderers` | {'int': 519} |
| `tabs` | {'int': 519} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
