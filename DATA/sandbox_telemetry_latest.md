# sandbox_telemetry_parse — 2026-10-07 13:01:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1033213 lines=2270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2265 |
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
| `chromeBrowserPssKb` | {'int': 2265} |
| `chromeGpuPssKb` | {'int': 2265} |
| `chromeOtherPssKb` | {'int': 2265} |
| `chromeProcesses` | {'int': 2265} |
| `chromeProfiles` | {'int': 2265} |
| `chromeRendererMaxPssKb` | {'int': 2265} |
| `chromeRendererPssKb` | {'int': 2265} |
| `chromeRenderers` | {'int': 2265} |
| `chromeTabs` | {'int': 2265} |
| `chromeTabsProbedProfiles` | {'int': 2265} |
| `chromeUtilityPssKb` | {'int': 2265} |
| `desktopPssKb` | {'int': 2265} |
| `hostPssKb` | {'int': 2265} |
| `kind` | {'str': 2265} |
| `memAvailableKb` | {'int': 2265} |
| `memTotalKb` | {'int': 2265} |
| `otherPssKb` | {'int': 2265} |
| `processes` | {'int': 2265} |
| `pssFallbackProcesses` | {'int': 2265} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
