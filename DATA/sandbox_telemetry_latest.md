# sandbox_telemetry_parse — 2026-10-06 07:25:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=232298 lines=514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 509 |
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
| `chromeBrowserPssKb` | {'int': 509} |
| `chromeGpuPssKb` | {'int': 509} |
| `chromeOtherPssKb` | {'int': 509} |
| `chromeProcesses` | {'int': 509} |
| `chromeProfiles` | {'int': 509} |
| `chromeRendererMaxPssKb` | {'int': 509} |
| `chromeRendererPssKb` | {'int': 509} |
| `chromeRenderers` | {'int': 509} |
| `chromeTabs` | {'int': 509} |
| `chromeTabsProbedProfiles` | {'int': 509} |
| `chromeUtilityPssKb` | {'int': 509} |
| `desktopPssKb` | {'int': 509} |
| `hostPssKb` | {'int': 509} |
| `kind` | {'str': 509} |
| `memAvailableKb` | {'int': 509} |
| `memTotalKb` | {'int': 509} |
| `otherPssKb` | {'int': 509} |
| `processes` | {'int': 509} |
| `pssFallbackProcesses` | {'int': 509} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
