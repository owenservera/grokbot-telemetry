# sandbox_telemetry_parse — 2026-10-27 04:55:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=331820 lines=737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 732 |
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
| `chromeBrowserPssKb` | {'int': 732} |
| `chromeGpuPssKb` | {'int': 732} |
| `chromeOtherPssKb` | {'int': 732} |
| `chromeProcesses` | {'int': 732} |
| `chromeProfiles` | {'int': 732} |
| `chromeRendererMaxPssKb` | {'int': 732} |
| `chromeRendererPssKb` | {'int': 732} |
| `chromeRenderers` | {'int': 732} |
| `chromeTabs` | {'int': 732} |
| `chromeTabsProbedProfiles` | {'int': 732} |
| `chromeUtilityPssKb` | {'int': 732} |
| `desktopPssKb` | {'int': 732} |
| `hostPssKb` | {'int': 732} |
| `kind` | {'str': 732} |
| `memAvailableKb` | {'int': 732} |
| `memTotalKb` | {'int': 732} |
| `otherPssKb` | {'int': 732} |
| `processes` | {'int': 732} |
| `pssFallbackProcesses` | {'int': 732} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
