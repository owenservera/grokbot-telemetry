# sandbox_telemetry_parse — 2026-10-06 14:07:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=412874 lines=910
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 905 |
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
| `chromeBrowserPssKb` | {'int': 905} |
| `chromeGpuPssKb` | {'int': 905} |
| `chromeOtherPssKb` | {'int': 905} |
| `chromeProcesses` | {'int': 905} |
| `chromeProfiles` | {'int': 905} |
| `chromeRendererMaxPssKb` | {'int': 905} |
| `chromeRendererPssKb` | {'int': 905} |
| `chromeRenderers` | {'int': 905} |
| `chromeTabs` | {'int': 905} |
| `chromeTabsProbedProfiles` | {'int': 905} |
| `chromeUtilityPssKb` | {'int': 905} |
| `desktopPssKb` | {'int': 905} |
| `hostPssKb` | {'int': 905} |
| `kind` | {'str': 905} |
| `memAvailableKb` | {'int': 905} |
| `memTotalKb` | {'int': 905} |
| `otherPssKb` | {'int': 905} |
| `processes` | {'int': 905} |
| `pssFallbackProcesses` | {'int': 905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
