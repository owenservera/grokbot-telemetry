# sandbox_telemetry_parse — 2026-10-27 03:05:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=284812 lines=633
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 628 |
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
| `chromeBrowserPssKb` | {'int': 628} |
| `chromeGpuPssKb` | {'int': 628} |
| `chromeOtherPssKb` | {'int': 628} |
| `chromeProcesses` | {'int': 628} |
| `chromeProfiles` | {'int': 628} |
| `chromeRendererMaxPssKb` | {'int': 628} |
| `chromeRendererPssKb` | {'int': 628} |
| `chromeRenderers` | {'int': 628} |
| `chromeTabs` | {'int': 628} |
| `chromeTabsProbedProfiles` | {'int': 628} |
| `chromeUtilityPssKb` | {'int': 628} |
| `desktopPssKb` | {'int': 628} |
| `hostPssKb` | {'int': 628} |
| `kind` | {'str': 628} |
| `memAvailableKb` | {'int': 628} |
| `memTotalKb` | {'int': 628} |
| `otherPssKb` | {'int': 628} |
| `processes` | {'int': 628} |
| `pssFallbackProcesses` | {'int': 628} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
