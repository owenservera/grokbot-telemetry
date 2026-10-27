# sandbox_telemetry_parse — 2026-10-27 01:24:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=246360 lines=548
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 543 |
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
| `chromeBrowserPssKb` | {'int': 543} |
| `chromeGpuPssKb` | {'int': 543} |
| `chromeOtherPssKb` | {'int': 543} |
| `chromeProcesses` | {'int': 543} |
| `chromeProfiles` | {'int': 543} |
| `chromeRendererMaxPssKb` | {'int': 543} |
| `chromeRendererPssKb` | {'int': 543} |
| `chromeRenderers` | {'int': 543} |
| `chromeTabs` | {'int': 543} |
| `chromeTabsProbedProfiles` | {'int': 543} |
| `chromeUtilityPssKb` | {'int': 543} |
| `desktopPssKb` | {'int': 543} |
| `hostPssKb` | {'int': 543} |
| `kind` | {'str': 543} |
| `memAvailableKb` | {'int': 543} |
| `memTotalKb` | {'int': 543} |
| `otherPssKb` | {'int': 543} |
| `processes` | {'int': 543} |
| `pssFallbackProcesses` | {'int': 543} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
