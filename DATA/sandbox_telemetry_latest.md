# sandbox_telemetry_parse — 2026-10-07 03:53:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=786973 lines=1730
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1725 |
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
| `chromeBrowserPssKb` | {'int': 1725} |
| `chromeGpuPssKb` | {'int': 1725} |
| `chromeOtherPssKb` | {'int': 1725} |
| `chromeProcesses` | {'int': 1725} |
| `chromeProfiles` | {'int': 1725} |
| `chromeRendererMaxPssKb` | {'int': 1725} |
| `chromeRendererPssKb` | {'int': 1725} |
| `chromeRenderers` | {'int': 1725} |
| `chromeTabs` | {'int': 1725} |
| `chromeTabsProbedProfiles` | {'int': 1725} |
| `chromeUtilityPssKb` | {'int': 1725} |
| `desktopPssKb` | {'int': 1725} |
| `hostPssKb` | {'int': 1725} |
| `kind` | {'str': 1725} |
| `memAvailableKb` | {'int': 1725} |
| `memTotalKb` | {'int': 1725} |
| `otherPssKb` | {'int': 1725} |
| `processes` | {'int': 1725} |
| `pssFallbackProcesses` | {'int': 1725} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
