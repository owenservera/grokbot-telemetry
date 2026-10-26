# sandbox_telemetry_parse — 2026-10-26 19:14:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=91887 lines=207
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 202 |
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
| `chromeBrowserPssKb` | {'int': 202} |
| `chromeGpuPssKb` | {'int': 202} |
| `chromeOtherPssKb` | {'int': 202} |
| `chromeProcesses` | {'int': 202} |
| `chromeProfiles` | {'int': 202} |
| `chromeRendererMaxPssKb` | {'int': 202} |
| `chromeRendererPssKb` | {'int': 202} |
| `chromeRenderers` | {'int': 202} |
| `chromeTabs` | {'int': 202} |
| `chromeTabsProbedProfiles` | {'int': 202} |
| `chromeUtilityPssKb` | {'int': 202} |
| `desktopPssKb` | {'int': 202} |
| `hostPssKb` | {'int': 202} |
| `kind` | {'str': 202} |
| `memAvailableKb` | {'int': 202} |
| `memTotalKb` | {'int': 202} |
| `otherPssKb` | {'int': 202} |
| `processes` | {'int': 202} |
| `pssFallbackProcesses` | {'int': 202} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
