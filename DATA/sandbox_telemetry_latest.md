# sandbox_telemetry_parse — 2026-10-07 01:17:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=716640 lines=1576
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1571 |
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
| `chromeBrowserPssKb` | {'int': 1571} |
| `chromeGpuPssKb` | {'int': 1571} |
| `chromeOtherPssKb` | {'int': 1571} |
| `chromeProcesses` | {'int': 1571} |
| `chromeProfiles` | {'int': 1571} |
| `chromeRendererMaxPssKb` | {'int': 1571} |
| `chromeRendererPssKb` | {'int': 1571} |
| `chromeRenderers` | {'int': 1571} |
| `chromeTabs` | {'int': 1571} |
| `chromeTabsProbedProfiles` | {'int': 1571} |
| `chromeUtilityPssKb` | {'int': 1571} |
| `desktopPssKb` | {'int': 1571} |
| `hostPssKb` | {'int': 1571} |
| `kind` | {'str': 1571} |
| `memAvailableKb` | {'int': 1571} |
| `memTotalKb` | {'int': 1571} |
| `otherPssKb` | {'int': 1571} |
| `processes` | {'int': 1571} |
| `pssFallbackProcesses` | {'int': 1571} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
