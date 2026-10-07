# sandbox_telemetry_parse — 2026-10-07 08:37:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=913741 lines=2008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2003 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2003} |
| `chromeGpuPssKb` | {'int': 2003} |
| `chromeOtherPssKb` | {'int': 2003} |
| `chromeProcesses` | {'int': 2003} |
| `chromeProfiles` | {'int': 2003} |
| `chromeRendererMaxPssKb` | {'int': 2003} |
| `chromeRendererPssKb` | {'int': 2003} |
| `chromeRenderers` | {'int': 2003} |
| `chromeTabs` | {'int': 2003} |
| `chromeTabsProbedProfiles` | {'int': 2003} |
| `chromeUtilityPssKb` | {'int': 2003} |
| `desktopPssKb` | {'int': 2003} |
| `hostPssKb` | {'int': 2003} |
| `kind` | {'str': 2003} |
| `memAvailableKb` | {'int': 2003} |
| `memTotalKb` | {'int': 2003} |
| `otherPssKb` | {'int': 2003} |
| `processes` | {'int': 2003} |
| `pssFallbackProcesses` | {'int': 2003} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
