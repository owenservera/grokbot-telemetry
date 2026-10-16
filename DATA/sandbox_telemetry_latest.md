# sandbox_telemetry_parse — 2026-10-16 12:09:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=432919 lines=1618
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1066 |
| `memory_sample` | 543 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1063} |
| `display` | {'int': 1066} |
| `kind` | {'str': 1066} |
| `processes` | {'int': 1066} |
| `pssKb` | {'int': 1066} |
| `rendererMaxPssKb` | {'int': 1066} |
| `renderers` | {'int': 1066} |
| `tabs` | {'int': 1065} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
