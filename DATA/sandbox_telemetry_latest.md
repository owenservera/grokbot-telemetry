# sandbox_telemetry_parse — 2026-10-13 11:56:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1057917 lines=2683
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2107 |
| `chrome_profile_sample` | 568 |
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
| `chromeBrowserPssKb` | {'int': 2107} |
| `chromeGpuPssKb` | {'int': 2107} |
| `chromeOtherPssKb` | {'int': 2107} |
| `chromeProcesses` | {'int': 2107} |
| `chromeProfiles` | {'int': 2107} |
| `chromeRendererMaxPssKb` | {'int': 2107} |
| `chromeRendererPssKb` | {'int': 2107} |
| `chromeRenderers` | {'int': 2107} |
| `chromeTabs` | {'int': 2107} |
| `chromeTabsProbedProfiles` | {'int': 2107} |
| `chromeUtilityPssKb` | {'int': 2107} |
| `desktopPssKb` | {'int': 2107} |
| `hostPssKb` | {'int': 2107} |
| `kind` | {'str': 2107} |
| `memAvailableKb` | {'int': 2107} |
| `memTotalKb` | {'int': 2107} |
| `otherPssKb` | {'int': 2107} |
| `processes` | {'int': 2107} |
| `pssFallbackProcesses` | {'int': 2107} |

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
| `cpuMillicores` | {'int': 567} |
| `display` | {'int': 568} |
| `kind` | {'str': 568} |
| `processes` | {'int': 568} |
| `pssKb` | {'int': 568} |
| `rendererMaxPssKb` | {'int': 568} |
| `renderers` | {'int': 568} |
| `tabs` | {'int': 568} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
