# sandbox_telemetry_parse — 2026-10-13 10:18:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1007586 lines=2525
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2028 |
| `chrome_profile_sample` | 489 |
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
| `chromeBrowserPssKb` | {'int': 2028} |
| `chromeGpuPssKb` | {'int': 2028} |
| `chromeOtherPssKb` | {'int': 2028} |
| `chromeProcesses` | {'int': 2028} |
| `chromeProfiles` | {'int': 2028} |
| `chromeRendererMaxPssKb` | {'int': 2028} |
| `chromeRendererPssKb` | {'int': 2028} |
| `chromeRenderers` | {'int': 2028} |
| `chromeTabs` | {'int': 2028} |
| `chromeTabsProbedProfiles` | {'int': 2028} |
| `chromeUtilityPssKb` | {'int': 2028} |
| `desktopPssKb` | {'int': 2028} |
| `hostPssKb` | {'int': 2028} |
| `kind` | {'str': 2028} |
| `memAvailableKb` | {'int': 2028} |
| `memTotalKb` | {'int': 2028} |
| `otherPssKb` | {'int': 2028} |
| `processes` | {'int': 2028} |
| `pssFallbackProcesses` | {'int': 2028} |

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
| `cpuMillicores` | {'int': 488} |
| `display` | {'int': 489} |
| `kind` | {'str': 489} |
| `processes` | {'int': 489} |
| `pssKb` | {'int': 489} |
| `rendererMaxPssKb` | {'int': 489} |
| `renderers` | {'int': 489} |
| `tabs` | {'int': 489} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
