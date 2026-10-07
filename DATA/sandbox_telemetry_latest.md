# sandbox_telemetry_parse — 2026-10-07 13:06:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1035493 lines=2275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2270 |
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
| `chromeBrowserPssKb` | {'int': 2270} |
| `chromeGpuPssKb` | {'int': 2270} |
| `chromeOtherPssKb` | {'int': 2270} |
| `chromeProcesses` | {'int': 2270} |
| `chromeProfiles` | {'int': 2270} |
| `chromeRendererMaxPssKb` | {'int': 2270} |
| `chromeRendererPssKb` | {'int': 2270} |
| `chromeRenderers` | {'int': 2270} |
| `chromeTabs` | {'int': 2270} |
| `chromeTabsProbedProfiles` | {'int': 2270} |
| `chromeUtilityPssKb` | {'int': 2270} |
| `desktopPssKb` | {'int': 2270} |
| `hostPssKb` | {'int': 2270} |
| `kind` | {'str': 2270} |
| `memAvailableKb` | {'int': 2270} |
| `memTotalKb` | {'int': 2270} |
| `otherPssKb` | {'int': 2270} |
| `processes` | {'int': 2270} |
| `pssFallbackProcesses` | {'int': 2270} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
