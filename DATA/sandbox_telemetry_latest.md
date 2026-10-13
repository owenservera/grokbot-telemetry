# sandbox_telemetry_parse — 2026-10-13 07:42:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=922952 lines=2259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1895 |
| `chrome_profile_sample` | 356 |
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
| `chromeBrowserPssKb` | {'int': 1895} |
| `chromeGpuPssKb` | {'int': 1895} |
| `chromeOtherPssKb` | {'int': 1895} |
| `chromeProcesses` | {'int': 1895} |
| `chromeProfiles` | {'int': 1895} |
| `chromeRendererMaxPssKb` | {'int': 1895} |
| `chromeRendererPssKb` | {'int': 1895} |
| `chromeRenderers` | {'int': 1895} |
| `chromeTabs` | {'int': 1895} |
| `chromeTabsProbedProfiles` | {'int': 1895} |
| `chromeUtilityPssKb` | {'int': 1895} |
| `desktopPssKb` | {'int': 1895} |
| `hostPssKb` | {'int': 1895} |
| `kind` | {'str': 1895} |
| `memAvailableKb` | {'int': 1895} |
| `memTotalKb` | {'int': 1895} |
| `otherPssKb` | {'int': 1895} |
| `processes` | {'int': 1895} |
| `pssFallbackProcesses` | {'int': 1895} |

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
| `cpuMillicores` | {'int': 355} |
| `display` | {'int': 356} |
| `kind` | {'str': 356} |
| `processes` | {'int': 356} |
| `pssKb` | {'int': 356} |
| `rendererMaxPssKb` | {'int': 356} |
| `renderers` | {'int': 356} |
| `tabs` | {'int': 356} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
