# sandbox_telemetry_parse — 2026-10-13 03:58:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=802023 lines=1879
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1705 |
| `chrome_profile_sample` | 166 |
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
| `chromeBrowserPssKb` | {'int': 1705} |
| `chromeGpuPssKb` | {'int': 1705} |
| `chromeOtherPssKb` | {'int': 1705} |
| `chromeProcesses` | {'int': 1705} |
| `chromeProfiles` | {'int': 1705} |
| `chromeRendererMaxPssKb` | {'int': 1705} |
| `chromeRendererPssKb` | {'int': 1705} |
| `chromeRenderers` | {'int': 1705} |
| `chromeTabs` | {'int': 1705} |
| `chromeTabsProbedProfiles` | {'int': 1705} |
| `chromeUtilityPssKb` | {'int': 1705} |
| `desktopPssKb` | {'int': 1705} |
| `hostPssKb` | {'int': 1705} |
| `kind` | {'str': 1705} |
| `memAvailableKb` | {'int': 1705} |
| `memTotalKb` | {'int': 1705} |
| `otherPssKb` | {'int': 1705} |
| `processes` | {'int': 1705} |
| `pssFallbackProcesses` | {'int': 1705} |

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
| `cpuMillicores` | {'int': 165} |
| `display` | {'int': 166} |
| `kind` | {'str': 166} |
| `processes` | {'int': 166} |
| `pssKb` | {'int': 166} |
| `rendererMaxPssKb` | {'int': 166} |
| `renderers` | {'int': 166} |
| `tabs` | {'int': 166} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
