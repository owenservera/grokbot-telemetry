# sandbox_telemetry_parse — 2026-10-26 21:18:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=144435 lines=323
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 318 |
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
| `chromeBrowserPssKb` | {'int': 318} |
| `chromeGpuPssKb` | {'int': 318} |
| `chromeOtherPssKb` | {'int': 318} |
| `chromeProcesses` | {'int': 318} |
| `chromeProfiles` | {'int': 318} |
| `chromeRendererMaxPssKb` | {'int': 318} |
| `chromeRendererPssKb` | {'int': 318} |
| `chromeRenderers` | {'int': 318} |
| `chromeTabs` | {'int': 318} |
| `chromeTabsProbedProfiles` | {'int': 318} |
| `chromeUtilityPssKb` | {'int': 318} |
| `desktopPssKb` | {'int': 318} |
| `hostPssKb` | {'int': 318} |
| `kind` | {'str': 318} |
| `memAvailableKb` | {'int': 318} |
| `memTotalKb` | {'int': 318} |
| `otherPssKb` | {'int': 318} |
| `processes` | {'int': 318} |
| `pssFallbackProcesses` | {'int': 318} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
