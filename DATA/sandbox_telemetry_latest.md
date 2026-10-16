# sandbox_telemetry_parse — 2026-10-16 16:31:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=628744 lines=2350
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1554 |
| `memory_sample` | 787 |
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
| `chromeBrowserPssKb` | {'int': 787} |
| `chromeGpuPssKb` | {'int': 787} |
| `chromeOtherPssKb` | {'int': 787} |
| `chromeProcesses` | {'int': 787} |
| `chromeProfiles` | {'int': 787} |
| `chromeRendererMaxPssKb` | {'int': 787} |
| `chromeRendererPssKb` | {'int': 787} |
| `chromeRenderers` | {'int': 787} |
| `chromeTabs` | {'int': 787} |
| `chromeTabsProbedProfiles` | {'int': 787} |
| `chromeUtilityPssKb` | {'int': 787} |
| `desktopPssKb` | {'int': 787} |
| `hostPssKb` | {'int': 787} |
| `kind` | {'str': 787} |
| `memAvailableKb` | {'int': 787} |
| `memTotalKb` | {'int': 787} |
| `otherPssKb` | {'int': 787} |
| `processes` | {'int': 787} |
| `pssFallbackProcesses` | {'int': 787} |

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
| `cpuMillicores` | {'int': 1551} |
| `display` | {'int': 1554} |
| `kind` | {'str': 1554} |
| `processes` | {'int': 1554} |
| `pssKb` | {'int': 1554} |
| `rendererMaxPssKb` | {'int': 1554} |
| `renderers` | {'int': 1554} |
| `tabs` | {'int': 1553} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
