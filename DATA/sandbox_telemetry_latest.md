# sandbox_telemetry_parse — 2026-10-13 01:29:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=757460 lines=1739
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1635 |
| `chrome_profile_sample` | 96 |
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
| `chromeBrowserPssKb` | {'int': 1635} |
| `chromeGpuPssKb` | {'int': 1635} |
| `chromeOtherPssKb` | {'int': 1635} |
| `chromeProcesses` | {'int': 1635} |
| `chromeProfiles` | {'int': 1635} |
| `chromeRendererMaxPssKb` | {'int': 1635} |
| `chromeRendererPssKb` | {'int': 1635} |
| `chromeRenderers` | {'int': 1635} |
| `chromeTabs` | {'int': 1635} |
| `chromeTabsProbedProfiles` | {'int': 1635} |
| `chromeUtilityPssKb` | {'int': 1635} |
| `desktopPssKb` | {'int': 1635} |
| `hostPssKb` | {'int': 1635} |
| `kind` | {'str': 1635} |
| `memAvailableKb` | {'int': 1635} |
| `memTotalKb` | {'int': 1635} |
| `otherPssKb` | {'int': 1635} |
| `processes` | {'int': 1635} |
| `pssFallbackProcesses` | {'int': 1635} |

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
| `cpuMillicores` | {'int': 95} |
| `display` | {'int': 96} |
| `kind` | {'str': 96} |
| `processes` | {'int': 96} |
| `pssKb` | {'int': 96} |
| `rendererMaxPssKb` | {'int': 96} |
| `renderers` | {'int': 96} |
| `tabs` | {'int': 96} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
