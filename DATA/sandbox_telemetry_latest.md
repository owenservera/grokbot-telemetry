# sandbox_telemetry_parse — 2026-10-06 08:48:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=269690 lines=596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 591 |
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
| `chromeBrowserPssKb` | {'int': 591} |
| `chromeGpuPssKb` | {'int': 591} |
| `chromeOtherPssKb` | {'int': 591} |
| `chromeProcesses` | {'int': 591} |
| `chromeProfiles` | {'int': 591} |
| `chromeRendererMaxPssKb` | {'int': 591} |
| `chromeRendererPssKb` | {'int': 591} |
| `chromeRenderers` | {'int': 591} |
| `chromeTabs` | {'int': 591} |
| `chromeTabsProbedProfiles` | {'int': 591} |
| `chromeUtilityPssKb` | {'int': 591} |
| `desktopPssKb` | {'int': 591} |
| `hostPssKb` | {'int': 591} |
| `kind` | {'str': 591} |
| `memAvailableKb` | {'int': 591} |
| `memTotalKb` | {'int': 591} |
| `otherPssKb` | {'int': 591} |
| `processes` | {'int': 591} |
| `pssFallbackProcesses` | {'int': 591} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
