# sandbox_telemetry_parse — 2026-10-16 05:50:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=156096 lines=583
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 376 |
| `memory_sample` | 198 |
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
| `chromeBrowserPssKb` | {'int': 198} |
| `chromeGpuPssKb` | {'int': 198} |
| `chromeOtherPssKb` | {'int': 198} |
| `chromeProcesses` | {'int': 198} |
| `chromeProfiles` | {'int': 198} |
| `chromeRendererMaxPssKb` | {'int': 198} |
| `chromeRendererPssKb` | {'int': 198} |
| `chromeRenderers` | {'int': 198} |
| `chromeTabs` | {'int': 198} |
| `chromeTabsProbedProfiles` | {'int': 198} |
| `chromeUtilityPssKb` | {'int': 198} |
| `desktopPssKb` | {'int': 198} |
| `hostPssKb` | {'int': 198} |
| `kind` | {'str': 198} |
| `memAvailableKb` | {'int': 198} |
| `memTotalKb` | {'int': 198} |
| `otherPssKb` | {'int': 198} |
| `processes` | {'int': 198} |
| `pssFallbackProcesses` | {'int': 198} |

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
| `cpuMillicores` | {'int': 373} |
| `display` | {'int': 376} |
| `kind` | {'str': 376} |
| `processes` | {'int': 376} |
| `pssKb` | {'int': 376} |
| `rendererMaxPssKb` | {'int': 376} |
| `renderers` | {'int': 376} |
| `tabs` | {'int': 375} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
