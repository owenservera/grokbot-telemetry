# sandbox_telemetry_parse — 2026-10-13 07:24:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=914040 lines=2231
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1881 |
| `chrome_profile_sample` | 342 |
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
| `chromeBrowserPssKb` | {'int': 1881} |
| `chromeGpuPssKb` | {'int': 1881} |
| `chromeOtherPssKb` | {'int': 1881} |
| `chromeProcesses` | {'int': 1881} |
| `chromeProfiles` | {'int': 1881} |
| `chromeRendererMaxPssKb` | {'int': 1881} |
| `chromeRendererPssKb` | {'int': 1881} |
| `chromeRenderers` | {'int': 1881} |
| `chromeTabs` | {'int': 1881} |
| `chromeTabsProbedProfiles` | {'int': 1881} |
| `chromeUtilityPssKb` | {'int': 1881} |
| `desktopPssKb` | {'int': 1881} |
| `hostPssKb` | {'int': 1881} |
| `kind` | {'str': 1881} |
| `memAvailableKb` | {'int': 1881} |
| `memTotalKb` | {'int': 1881} |
| `otherPssKb` | {'int': 1881} |
| `processes` | {'int': 1881} |
| `pssFallbackProcesses` | {'int': 1881} |

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
| `cpuMillicores` | {'int': 341} |
| `display` | {'int': 342} |
| `kind` | {'str': 342} |
| `processes` | {'int': 342} |
| `pssKb` | {'int': 342} |
| `rendererMaxPssKb` | {'int': 342} |
| `renderers` | {'int': 342} |
| `tabs` | {'int': 342} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
