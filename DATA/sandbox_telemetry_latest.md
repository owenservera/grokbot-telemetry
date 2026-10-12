# sandbox_telemetry_parse — 2026-10-12 23:40:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=698894 lines=1555
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1543 |
| `chrome_profile_sample` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1543} |
| `chromeGpuPssKb` | {'int': 1543} |
| `chromeOtherPssKb` | {'int': 1543} |
| `chromeProcesses` | {'int': 1543} |
| `chromeProfiles` | {'int': 1543} |
| `chromeRendererMaxPssKb` | {'int': 1543} |
| `chromeRendererPssKb` | {'int': 1543} |
| `chromeRenderers` | {'int': 1543} |
| `chromeTabs` | {'int': 1543} |
| `chromeTabsProbedProfiles` | {'int': 1543} |
| `chromeUtilityPssKb` | {'int': 1543} |
| `desktopPssKb` | {'int': 1543} |
| `hostPssKb` | {'int': 1543} |
| `kind` | {'str': 1543} |
| `memAvailableKb` | {'int': 1543} |
| `memTotalKb` | {'int': 1543} |
| `otherPssKb` | {'int': 1543} |
| `processes` | {'int': 1543} |
| `pssFallbackProcesses` | {'int': 1543} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 3} |
| `display` | {'int': 4} |
| `kind` | {'str': 4} |
| `processes` | {'int': 4} |
| `pssKb` | {'int': 4} |
| `rendererMaxPssKb` | {'int': 4} |
| `renderers` | {'int': 4} |
| `tabs` | {'int': 4} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
