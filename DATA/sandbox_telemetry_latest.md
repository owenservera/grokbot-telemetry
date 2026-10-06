# sandbox_telemetry_parse — 2026-10-06 12:57:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=382322 lines=843
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 838 |
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
| `chromeBrowserPssKb` | {'int': 838} |
| `chromeGpuPssKb` | {'int': 838} |
| `chromeOtherPssKb` | {'int': 838} |
| `chromeProcesses` | {'int': 838} |
| `chromeProfiles` | {'int': 838} |
| `chromeRendererMaxPssKb` | {'int': 838} |
| `chromeRendererPssKb` | {'int': 838} |
| `chromeRenderers` | {'int': 838} |
| `chromeTabs` | {'int': 838} |
| `chromeTabsProbedProfiles` | {'int': 838} |
| `chromeUtilityPssKb` | {'int': 838} |
| `desktopPssKb` | {'int': 838} |
| `hostPssKb` | {'int': 838} |
| `kind` | {'str': 838} |
| `memAvailableKb` | {'int': 838} |
| `memTotalKb` | {'int': 838} |
| `otherPssKb` | {'int': 838} |
| `processes` | {'int': 838} |
| `pssFallbackProcesses` | {'int': 838} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
