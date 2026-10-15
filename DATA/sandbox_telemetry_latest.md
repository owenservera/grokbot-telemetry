# sandbox_telemetry_parse — 2026-10-16 01:11:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1146190 lines=2540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2535 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2535} |
| `chromeGpuPssKb` | {'int': 2535} |
| `chromeOtherPssKb` | {'int': 2535} |
| `chromeProcesses` | {'int': 2535} |
| `chromeProfiles` | {'int': 2535} |
| `chromeRendererMaxPssKb` | {'int': 2535} |
| `chromeRendererPssKb` | {'int': 2535} |
| `chromeRenderers` | {'int': 2535} |
| `chromeTabs` | {'int': 2535} |
| `chromeTabsProbedProfiles` | {'int': 2535} |
| `chromeUtilityPssKb` | {'int': 2535} |
| `desktopPssKb` | {'int': 2535} |
| `hostPssKb` | {'int': 2535} |
| `kind` | {'str': 2535} |
| `memAvailableKb` | {'int': 2535} |
| `memTotalKb` | {'int': 2535} |
| `otherPssKb` | {'int': 2535} |
| `processes` | {'int': 2535} |
| `pssFallbackProcesses` | {'int': 2535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
