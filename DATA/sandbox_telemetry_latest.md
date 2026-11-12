# sandbox_telemetry_parse — 2026-11-12 14:29:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2172109 lines=4808
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4799 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4799} |
| `chromeGpuPssKb` | {'int': 4799} |
| `chromeOtherPssKb` | {'int': 4799} |
| `chromeProcesses` | {'int': 4799} |
| `chromeProfiles` | {'int': 4799} |
| `chromeRendererMaxPssKb` | {'int': 4799} |
| `chromeRendererPssKb` | {'int': 4799} |
| `chromeRenderers` | {'int': 4799} |
| `chromeTabs` | {'int': 4799} |
| `chromeTabsProbedProfiles` | {'int': 4799} |
| `chromeUtilityPssKb` | {'int': 4799} |
| `desktopPssKb` | {'int': 4799} |
| `hostPssKb` | {'int': 4799} |
| `kind` | {'str': 4799} |
| `memAvailableKb` | {'int': 4799} |
| `memTotalKb` | {'int': 4799} |
| `otherPssKb` | {'int': 4799} |
| `processes` | {'int': 4799} |
| `pssFallbackProcesses` | {'int': 4799} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
