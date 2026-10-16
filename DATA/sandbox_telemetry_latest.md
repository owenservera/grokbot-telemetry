# sandbox_telemetry_parse — 2026-10-16 14:05:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=514804 lines=1924
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1270 |
| `memory_sample` | 645 |
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
| `chromeBrowserPssKb` | {'int': 645} |
| `chromeGpuPssKb` | {'int': 645} |
| `chromeOtherPssKb` | {'int': 645} |
| `chromeProcesses` | {'int': 645} |
| `chromeProfiles` | {'int': 645} |
| `chromeRendererMaxPssKb` | {'int': 645} |
| `chromeRendererPssKb` | {'int': 645} |
| `chromeRenderers` | {'int': 645} |
| `chromeTabs` | {'int': 645} |
| `chromeTabsProbedProfiles` | {'int': 645} |
| `chromeUtilityPssKb` | {'int': 645} |
| `desktopPssKb` | {'int': 645} |
| `hostPssKb` | {'int': 645} |
| `kind` | {'str': 645} |
| `memAvailableKb` | {'int': 645} |
| `memTotalKb` | {'int': 645} |
| `otherPssKb` | {'int': 645} |
| `processes` | {'int': 645} |
| `pssFallbackProcesses` | {'int': 645} |

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
| `cpuMillicores` | {'int': 1267} |
| `display` | {'int': 1270} |
| `kind` | {'str': 1270} |
| `processes` | {'int': 1270} |
| `pssKb` | {'int': 1270} |
| `rendererMaxPssKb` | {'int': 1270} |
| `renderers` | {'int': 1270} |
| `tabs` | {'int': 1269} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
