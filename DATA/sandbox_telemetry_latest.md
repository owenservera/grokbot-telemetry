# sandbox_telemetry_parse — 2026-10-13 01:45:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=767005 lines=1769
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1650 |
| `chrome_profile_sample` | 111 |
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
| `chromeBrowserPssKb` | {'int': 1650} |
| `chromeGpuPssKb` | {'int': 1650} |
| `chromeOtherPssKb` | {'int': 1650} |
| `chromeProcesses` | {'int': 1650} |
| `chromeProfiles` | {'int': 1650} |
| `chromeRendererMaxPssKb` | {'int': 1650} |
| `chromeRendererPssKb` | {'int': 1650} |
| `chromeRenderers` | {'int': 1650} |
| `chromeTabs` | {'int': 1650} |
| `chromeTabsProbedProfiles` | {'int': 1650} |
| `chromeUtilityPssKb` | {'int': 1650} |
| `desktopPssKb` | {'int': 1650} |
| `hostPssKb` | {'int': 1650} |
| `kind` | {'str': 1650} |
| `memAvailableKb` | {'int': 1650} |
| `memTotalKb` | {'int': 1650} |
| `otherPssKb` | {'int': 1650} |
| `processes` | {'int': 1650} |
| `pssFallbackProcesses` | {'int': 1650} |

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
| `cpuMillicores` | {'int': 110} |
| `display` | {'int': 111} |
| `kind` | {'str': 111} |
| `processes` | {'int': 111} |
| `pssKb` | {'int': 111} |
| `rendererMaxPssKb` | {'int': 111} |
| `renderers` | {'int': 111} |
| `tabs` | {'int': 111} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
