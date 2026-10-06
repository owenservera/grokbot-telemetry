# sandbox_telemetry_parse — 2026-10-06 22:52:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=650450 lines=1431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1426 |
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
| `chromeBrowserPssKb` | {'int': 1426} |
| `chromeGpuPssKb` | {'int': 1426} |
| `chromeOtherPssKb` | {'int': 1426} |
| `chromeProcesses` | {'int': 1426} |
| `chromeProfiles` | {'int': 1426} |
| `chromeRendererMaxPssKb` | {'int': 1426} |
| `chromeRendererPssKb` | {'int': 1426} |
| `chromeRenderers` | {'int': 1426} |
| `chromeTabs` | {'int': 1426} |
| `chromeTabsProbedProfiles` | {'int': 1426} |
| `chromeUtilityPssKb` | {'int': 1426} |
| `desktopPssKb` | {'int': 1426} |
| `hostPssKb` | {'int': 1426} |
| `kind` | {'str': 1426} |
| `memAvailableKb` | {'int': 1426} |
| `memTotalKb` | {'int': 1426} |
| `otherPssKb` | {'int': 1426} |
| `processes` | {'int': 1426} |
| `pssFallbackProcesses` | {'int': 1426} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
